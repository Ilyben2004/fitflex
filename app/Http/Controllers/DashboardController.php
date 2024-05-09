<?php

namespace App\Http\Controllers;
use Carbon\Carbon;

use Illuminate\Http\Request;
use App\Models\User; // Import the User model

class DashboardController extends Controller
{
    
    public function getTimeClients($gym)
    {        if ($gym) { $now = Carbon::now();
            $startOfWeek = $now->startOfWeek();
    
            $startOfMonth = $now->startOfMonth();
    
            $counts = $gym->clients()
                ->selectRaw('
                    SUM(CASE WHEN created_at >= CURDATE() THEN 1 ELSE 0 END) AS day,
                    SUM(CASE WHEN created_at >= ? THEN 1 ELSE 0 END) AS week,
                    SUM(CASE WHEN created_at >= ? THEN 1 ELSE 0 END) AS month',
                    [$startOfWeek, $startOfMonth])
                ->first();
    
            // Return the counts as an array
            return [
                'allClients' => $gym->clients()->count(),
                'dayClients' => $counts->day,
                'weekClients' => $counts->week,
                'monthClients' => $counts->month,
                'unactiveClients' => $gym->clients()->whereDate('end_date', '<', $now)->count()
            ];
            
        } else {
            return 0;
        }
    }
    public function getTimeMoney($gym)
    {
       

    if ($gym) {
        // Get the current date and time
        $now = Carbon::now();

        // Get the starting date of the current week (Monday)
        $startOfWeek = $now->startOfWeek();

        // Get the starting date of the current month
        $startOfMonth = $now->startOfMonth();

        // Get the total amount of money received from payments for today, this week, and this month
        $amounts = $gym->clients()->with('payments')
            ->selectRaw('
                SUM(CASE WHEN payments.created_at >= CURDATE() THEN payments.paid_price ELSE 0 END) AS day,
                SUM(CASE WHEN payments.created_at >= ? THEN payments.paid_price ELSE 0 END) AS week,
                SUM(CASE WHEN payments.created_at >= ? THEN payments.paid_price ELSE 0 END) AS month,
                SUM(payments.paid_price) AS total',
                
                [$startOfWeek, $startOfMonth])
            ->join('payments', 'clients.id', '=', 'payments.id_user')
            ->first();

        // Return the amounts as an array
        return [
            'totalAmount'=> $amounts->total,
            'dayAmount' => $amounts->day,
            'weekAmount' => $amounts->week,
            'monthAmount' => $amounts->month
        ];
        
    } else {
        return 0;
    }
    }



    public function getDashboardStats($idUser)
    {
        $user = User::findOrFail($idUser);
        $gym = $user->gym;
    
        if (!$gym) {
            return response()->json(['error' => 'Gym not found'], 404);
        }
    
        $timeClients = $this->getTimeClients($gym);
        $timeMoney = $this->getTimeMoney($gym);
    
        return response()->json([
            'timeClients' => $timeClients,
            'timeMoney' => $timeMoney
        ]);
    }
    


}

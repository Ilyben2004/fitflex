<?php

namespace App\Http\Controllers;

use App\Models\Payment;
use Illuminate\Http\Request;
use App\Models\User; 


class PaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Fetch all payments and return them as a JSON response
        $payments = Payment::all();
        return response()->json($payments);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate the request data
        $request->validate([
            'paid_price' => 'required|numeric',
            'id_user' => 'required|exists:clients,id',
        ]);

        // Create a new payment record in the database
        $payment = Payment::create($request->all());

        // Return the created payment as a JSON response
        return response()->json($payment, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // Find the payment by id
        $payment = Payment::findOrFail($id);

        // Return the payment as a JSON response
        return response()->json($payment);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // Validate the request data
        $request->validate([
            'paid_price' => 'numeric',
            'id_user' => 'exists:clients,id',
        ]);

        // Find the payment by id
        $payment = Payment::findOrFail($id);

        // Update the payment with the new data
        $payment->update($request->all());

        // Return the updated payment as a JSON response
        return response()->json($payment);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Find the payment by id
        $payment = Payment::findOrFail($id);

        // Delete the payment
        $payment->delete();

        // Return a success message as a JSON response
        return response()->json(['message' => 'Payment deleted successfully']);
    }
    public function getPaymentsByGym($idUser)
    {
        try {
            $user = User::findOrFail($idUser);
            $gym = $user->gym;
    
            // Retrieve the clients associated with the gym
            $clients = $gym->clients;
    
            // Initialize an array to store payments
            $allPayments = [];
    
            // Loop through each client and collect their payments
            foreach ($clients as $client) {
                // Loop through each payment of the current client
                foreach ($client->payments as $payment) {
                    // Convert payment to an array and add the client's first_name
                    $paymentArray = $payment->toArray();
                    $paymentArray['full_name'] = $client->first_name;
            
                    // Merge the modified payment array into allPayments
                    $allPayments[] = $paymentArray;
                }
            }
    
            // Return a JSON response containing all payments for the clients
            return response()->json([
                'payments' => $allPayments,
            ], 200);
        } catch (\Exception $e) {
            // Return an error message as a JSON response if an exception occurs
            return response()->json([
                'error' => 'User not found or other error occurred',
                'message' => $e->getMessage()
            ], 404);
        }
    }
    
}

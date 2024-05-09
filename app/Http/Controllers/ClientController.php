<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Client;
use App\Models\User; 

class ClientController extends Controller
{
    public function index()
    {
        return Client::select('*')
                     ->orderBy('end_date', 'desc')
                     ->get();
    }

    public function store(Request $request)
    {
        $request->validate([
            'first_name'=>'required',
            
            'date_birth'=>'required',
            'phone_number'=>'required',
            'end_date'=>'required',
            'picture_file'=>'sometimes|required',
            'id_gym'=>'sometimes|required'

            




        ]);

       
        Client::create($request->post());
        return response()->json([
            'message'=>'Client added successfully'
        ]);
    }
    public function show(Client $client)
    {
        return response()->json([
            'client' => $client
        ]);
    }

    public function update(Request $request, Client $client)
    {
        $request->validate([
            'first_name'=>'required',
         
            'date_birth'=>'required',
            'phone_number'=>'required',
            'end_date'=>'required',
            'picture_file'=>'sometimes|required',
            'id_gym'=>'sometimes|required'

            


        ]);
 

        $client->fill($request->post())->update();


        return response()->json([
            'message' => 'Client updated successfully'
        ]);
    }
    public function destroy(Client $client)
        {
        $client->delete();
        return response()->json([
            'message' => 'client deleted successfully'
        ]);
        }

        public function stopClientSub($idClient){
            $client = Client::findOrFail($idClient);
            $client->active = 0;
            $client->save();

            // Optionally, return a response indicating success or failure
            return response()->json(['message' => 'Client subscription stopped successfully']);
        
            
        }
        public function activeClientSub($idClient){
            $client = Client::findOrFail($idClient);
            $client->active = 1;
            $client->save();

            // Optionally, return a response indicating success or failure
            return response()->json(['message' => 'Client subscription activated successfully']);
        
        }
        
        public function getClientsByGym($idUser)
        {
            try {
                // Find the user by id or fail with an exception
                $user = User::findOrFail($idUser);
                
                // Get the gym associated with the user
                $gym = $user->gym;
                
                // Get clients from the gym relationship using eager loading
                $clients = $gym->clients()->get();
                
                // Return the clients as a JSON response with HTTP 200 status code
                return response()->json([
                    'clients' => $clients
                  // optional metadata
                ], 200);
            } catch (\Exception $e) {
                // Return an error message as JSON if an exception occurs
                return response()->json([
                    'error' => 'User not found or other error occurred',
                    'message' => $e->getMessage()
                ], 404);
            }
        }
        

   
}

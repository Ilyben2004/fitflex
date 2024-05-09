<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;

    protected $fillable = ['first_name', 'last_name', 'date_birth', 'phone_number', 'end_date', 'picture_file', 'id_gym','active'];

    /**
     * Get the gym that owns the client.
     */
    public function gym()
    {
        return $this->belongsTo(Gym::class, 'id_gym');
    }
    public function payments()
    {
        return $this->hasMany(Payment::class,'id_user');
    }
}

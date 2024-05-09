<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Gym extends Model
{
    use HasFactory;

    protected $fillable = ['id_user','name', 'location', 'currency','created_at'];
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'id_user');
    }
    public function clients()
    {
        return $this->hasMany(Client::class,'id_gym');
    }


    // If you don't want timestamps (created_at and updated_at) in your gym table
    // public $timestamps = false;
}

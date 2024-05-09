<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;

    protected $fillable = ['paid_price', 'id_user','created_at'];

    /**
     * Get the user that owns the payment.
     */
    public function user()
    {
        return $this->belongsTo(Client::class, 'id_user');
    }
}

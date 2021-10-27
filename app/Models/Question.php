<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;

    protected $guarded = ['id'];
    protected $table = 'question';
    protected $fillable = ['description', 'justify'];

    public function setCreatedAt($value)
    {
        return null;
    }

    public function setUpdatedAt($value)
    {
        return null;
    }

}

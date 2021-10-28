<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    use HasFactory;

    protected $guarded = ['id'];
    protected $table = 'answer';
    protected $fillable = ['description', 'value'];

    public function setCreatedAt($value)
    {
        return null;
    }

    public function setUpdatedAt($value)
    {
        return null;
    }

}

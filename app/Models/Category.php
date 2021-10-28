<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $guarded = ['id'];
    protected $table = 'category';
    protected $fillable = ['description'];

    public function setCreatedAt($value)
    {
        return null;
    }

    public function setUpdatedAt($value)
    {
        return null;
    }

}

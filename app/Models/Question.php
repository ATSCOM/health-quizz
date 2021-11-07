<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
  use HasFactory;

  protected $fillable = ['description', 'justify'];
  protected $timestemap = false;

  public function category(){
    return $this->belongsToMany(Category::class);
  }
}

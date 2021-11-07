<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    use HasFactory;

    protected $fillable = ['description', 'value'];
    protected $timestemap = false;

    public function question(){
      return $this->belongsToMany(Question::class);
    }

}

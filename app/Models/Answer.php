<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    use HasFactory;

    static $rules = [
		'description' => 'required',
		'value' => 'required',
		'question_id' => 'required',
    ];

    protected $fillable = ['description','value','question_id'];
    public $timestamps = false;

    public function question()
    {
        return $this->hasOne('App\Models\Question', 'id', 'question_id');
    }

}

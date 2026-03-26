<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Rodada extends Model
{
    protected $table = 'rodadas';

    protected $fillable = [
        'fase_id',
        'nome',
        'ordem',
        'data_fechamento',
    ];

    protected function casts(): array
    {
        return [
            'data_fechamento' => 'datetime',
        ];
    }

    public function fase(): BelongsTo
    {
        return $this->belongsTo(Fase::class, 'fase_id');
    }

    public function jogos(): HasMany
    {
        return $this->hasMany(Jogo::class, 'rodada_id');
    }
}

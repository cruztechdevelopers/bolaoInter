<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Aposta extends Model
{
    protected $table = 'apostas';

    protected $fillable = [
        'cupom_id',
        'tipo',
        'torneio_id',
        'fase_id',
        'rodada_id',
        'grupo_id',
        'jogo_id',
        'selecao_id',
        'jogador_id',
        'conteudo',
    ];

    protected function casts(): array
    {
        return [
            'conteudo' => 'array',
        ];
    }

    public function cupom(): BelongsTo
    {
        return $this->belongsTo(Cupom::class, 'cupom_id');
    }

    public function logs(): HasMany
    {
        return $this->hasMany(LogAposta::class, 'aposta_id');
    }
}

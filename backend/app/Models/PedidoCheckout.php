<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class PedidoCheckout extends Model
{
    protected $table = 'pedidos_checkout';

    protected $fillable = [
        'usuario_id',
        'valor',
        'status',
        'referencia_checkout',
        'pago_at',
    ];

    protected function casts(): array
    {
        return [
            'valor' => 'decimal:2',
            'pago_at' => 'datetime',
        ];
    }

    public function usuario(): BelongsTo
    {
        return $this->belongsTo(Usuario::class, 'usuario_id');
    }

    public function cupons(): HasMany
    {
        return $this->hasMany(Cupom::class, 'pedido_checkout_id');
    }
}

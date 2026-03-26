<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('pedidos_checkout', function (Blueprint $table) {
            $table->id();
            $table->foreignId('usuario_id')->constrained('usuarios')->cascadeOnDelete();
            $table->decimal('valor', 10, 2);
            $table->string('status')->default('pendente');
            $table->string('referencia_checkout')->nullable();
            $table->timestamp('pago_at')->nullable();
            $table->timestamps();
        });

        Schema::create('cupons', function (Blueprint $table) {
            $table->id();
            $table->foreignId('usuario_id')->constrained('usuarios')->cascadeOnDelete();
            $table->foreignId('pedido_checkout_id')->nullable()->constrained('pedidos_checkout')->nullOnDelete();
            $table->string('codigo')->unique();
            $table->string('status')->default('inativo');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('cupons');
        Schema::dropIfExists('pedidos_checkout');
    }
};

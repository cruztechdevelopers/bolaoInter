<template>
  <section class="painel-card">
    <span class="etiqueta">Área autenticada</span>
    <h2>Painel do usuário</h2>
    <p>
      Usuário atual: <strong>{{ autenticacao.nome }}</strong>
    </p>
    <p>Os módulos de cupons, checkout e apostas serão conectados sobre esta base.</p>
  </section>
</template>

<script setup lang="ts">
import { usarAutenticacaoStore } from '../stores/autenticacao'

const autenticacao = usarAutenticacaoStore()
</script>

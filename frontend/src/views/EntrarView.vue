<template>
  <section class="painel-card painel-formulario">
    <span class="etiqueta">Autenticação</span>
    <h2>Entrar</h2>
    <p>Fluxo visual inicial para a fundação do MVP.</p>

    <form @submit.prevent="entrar">
      <label>
        E-mail
        <input v-model="email" type="email" placeholder="admin@interworldcup.local" />
      </label>

      <label>
        Senha
        <input v-model="senha" type="password" placeholder="••••••••" />
      </label>

      <button type="submit">Simular entrada</button>
    </form>
  </section>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import { useRouter } from 'vue-router'

import { usarAutenticacaoStore } from '../stores/autenticacao'

const email = ref('')
const senha = ref('')
const roteador = useRouter()
const autenticacao = usarAutenticacaoStore()

function entrar() {
  if (!email.value || !senha.value) {
    return
  }

  autenticacao.entrar()
  roteador.push('/painel')
}
</script>

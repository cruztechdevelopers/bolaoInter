import { computed, ref } from 'vue'
import { defineStore } from 'pinia'

type PerfilUsuario = 'visitante' | 'usuario' | 'administrador'

export const usarAutenticacaoStore = defineStore('autenticacao', () => {
  const nome = ref('Administrador Seed')
  const perfil = ref<PerfilUsuario>('administrador')
  const estaAutenticado = ref(false)

  const eAdministrador = computed(() => perfil.value === 'administrador')

  function entrar() {
    estaAutenticado.value = true
  }

  function sair() {
    estaAutenticado.value = false
    perfil.value = 'visitante'
    nome.value = 'Visitante'
  }

  return {
    nome,
    perfil,
    estaAutenticado,
    eAdministrador,
    entrar,
    sair,
  }
})

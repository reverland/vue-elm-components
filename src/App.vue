<template>
  <div class="app">
    <elm :src="Box" :ports="reverse"></elm>
  </div>
</template>

<script>
import Box from './elm/Box.elm'
import Elm from './components/Elm'
import reverse from './service/reverse'

export default {
  name: 'App',
  components: {
    Elm
  },
  data () {
    return {
      Box: Box
    }
  },
  methods: {
    reverse
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

<template>
  <div id="app">
    <ul>
      <li v-for="item in users" :key="item.id">{{ item.name }}</li>
    </ul>

    asdasd
  </div>
</template>

<script>
import axios from "axios"
export default {
  name: 'App',
  data() {
    return {
      users: null
    }
  },
  async mounted() {
    const res = await axios.get("http://124.221.127.247:3000/api/users")
    this.users = res.data
  }
}
</script>

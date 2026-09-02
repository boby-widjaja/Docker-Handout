<template>
    <base-image-tile :title="name" :imageSource="imagePlaceholder">
        <div class="button-container">
            <base-button :isLink="true" :link="`/product/form/${props.id}`">edit</base-button>
            <base-button :isLink="true" :link="`/product/delete/${props.id}`">delete</base-button>
        </div>
        <div class="row">
            <span class="label">Supplier:</span>
            <span class="value">{{supplier}}</span>
        </div>
        <div class="row">
            <span class="label">Category:</span>
            <span class="value">{{category}}</span>
        </div>
        <div class="highlight">
            {{formattedPrice}}
        </div>
    </base-image-tile>
</template>

<script setup>
import { computed } from 'vue';
const domain = import.meta.env.VITE_SERVER_DOMAIN;
const port = import.meta.env.VITE_SERVER_PORT;

const props = defineProps(['id', 'name', 'supplier', 'category', 'price', 'imagePath']);
const formattedPrice = computed(() => {
    return new Intl.NumberFormat('id-ID', {
        style: 'currency',
        currency: 'IDR'
    }).format(props.price);
})
const imagePlaceholder = computed(() => {
    const productImage = (props.imagePath === null) ? 'no-image.jpg' : props.imagePath
    return `http://${domain}:${port}/resources/image/product/${productImage}`
})
</script>
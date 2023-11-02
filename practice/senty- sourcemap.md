## Проблема

1. Генерация и загрузка в Sentry sourceMap.

## Решение

1. Использовать плагин `@sentry/webpack-plugin`. Для корректного парсинга js файлов нужно удалять .map файлы после выгрузки

```js
  sourcemaps: {
    filesToDeleteAfterUpload: './dist/**/*.map',
  },
```

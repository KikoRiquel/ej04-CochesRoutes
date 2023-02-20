import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'porPrecio',
})
export class PipesPrecioPipe implements PipeTransform {
  transform(value: unknown, ...args: unknown[]): unknown {
    return null;
  }
}

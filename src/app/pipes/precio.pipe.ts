import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'precio',
})
export class PrecioPipe implements PipeTransform {
  transform(coches: any[], min: string, max: string): any[] {
    let pMin: number = parseInt(min);
    let pMax: number = max == '0' ? 999999999 : parseInt(max);
    console.log(min);
    console.log(max);

    if (coches && coches.length && pMin >= 0 && pMax >= 0 && pMax >= pMin) {
      console.log('max >min');
      return coches.filter((c: any) => c.precio >= pMin && c.precio <= max);
    } else return coches;
  }
}

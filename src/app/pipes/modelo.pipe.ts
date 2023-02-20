import { LowerCasePipe } from '@angular/common';
import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'porModelo'
})
export class ModeloPipe implements PipeTransform {

  transform(coches: any[], patron: string): any[] {
   return coches.filter( (coche:any) => coche.nombre.toLowerCase().includes(patron.toLowerCase()) )

  }
  
}

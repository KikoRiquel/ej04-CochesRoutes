import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ParamsFiltrosService {
  private fab:string = "0"
  private tec:string = "0"
  private mod:string = ""
  private precioMax:string = "99999"
  private precioMin:string = "0"


  constructor() { }

  getFabFilter() {
    return this.fab
  }
  setFabFilter(newFab:string) {
    //habría que comprobar que newFab es un valor válido
    this.fab = newFab
    console.log(newFab)
  }
  getTecFilter() {
    return this.tec
  }
  setTecFilter(newTec:string) {
    //habría que comprobar que newTec es un valor válido
    this.tec = newTec
    console.log(newTec)
  }

  getModFilter() {
    return this.mod
  }
  setModFilter(newMod:string) {
    //habría que comprobar que newTec es un valor válido
    this.mod = newMod
    console.log(newMod)
  }
  getPrecioMinFilter() {
    return this.precioMin
  }
  setPrecioMinFilter(newMin:string) {
    //habría que comprobar que newTec es un valor válido
    this.precioMin = newMin
    console.log(newMin)
  }
  getPrecioMaxFilter() {
    return this.precioMax
  }
  setPrecioMaxFilter(newMax:string) {
    //habría que comprobar que newTec es un valor válido
    this.precioMax = newMax
    console.log(newMax)
  }


}

import {Injectable} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {Observable, timer} from "rxjs";
import {map, switchMap} from "rxjs/operators";
import {AbstractControl, AsyncValidatorFn} from "@angular/forms";

const URL = '  http://localhost:3000/phuongtien';

@Injectable({
  providedIn: 'root'
})
export class ServiceConnectService {
  public API: string = ' http://localhost:3000/phuongtien';
  public APIDiemDi: string = '   http://localhost:3000/diemDi';
  public APIDiemDen: string = '   http://localhost:3000/diemDen';

  constructor(
    public http: HttpClient
  ) {
  }

  getAll(): Observable<any> {
    return this.http.get(this.API);
  }

  getAllDiemDi(): Observable<any> {
    return this.http.get(this.APIDiemDi);
  }

  getAllDiemDen(): Observable<any> {
    return this.http.get(this.APIDiemDen);
  }

  createNewService(variable): Observable<any> {
    return this.http.post(this.API, variable)
  }

  validateID(): AsyncValidatorFn {
    return (control: AbstractControl): Observable<{ [key: string]: any } | null> => {
      return this.search(control.value)
        .pipe(
          map(res => {
            // if username is already taken
            console.log(res);
            if (res.length) {
              // return error
              return {'idExists': true};
            }
          })
        );
    };
  }

  search(text) {
    // debounce
    return timer(100)
      .pipe(
        switchMap(() => {
          // Check if id is exists :
          return this.http.get<any>(`${URL}?bienSoXe=${text}`)
        })
      );
  }

  findByID(idNeedFind: any): Observable<any> {
    return this.http.get(this.API + '/' + idNeedFind)
  }

  deleteService(idNeedDelete: any): Observable<any> {
    return this.http.delete(this.API + '/' + idNeedDelete)
  }

  editService(customer, idNeedEdit): Observable<any> {
    return this.http.put(this.API + '/' + idNeedEdit, customer)
  }

}

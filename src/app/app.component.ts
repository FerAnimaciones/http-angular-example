import { Component } from '@angular/core';
import { BackendApiService } from "./services/backend-api.service";
export interface Employees {
  id: number;
  employee_name: string;
  employee_salary: number;
  employee_age: number;
  profile_image: string;
}
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  public title:string = 'http-example';
  public Employees:Employees[]=[];
  constructor(
    private api: BackendApiService,
  ) {
    //http://dummy.restapiexample.com/ <-- api usada.
    this.api.getData("employees")
    .subscribe(
      response => {
        console.log(response);
        switch (response.status) {
          case "success":
          this.Employees=response.data;
          break;
          case "error":

          break;
          default:
          break;
        }
      },
      err => {
        console.log(err);
      }
    );
  }
}

import { Component, OnInit } from '@angular/core';
import { Available } from '../models/availinput.model';
// import { SearchBus } from '../models/searchbus.model';
// import { Travel } from '../models/travel.model';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-search-buses',
  templateUrl: './search-buses.component.html',
  styleUrls: ['./search-buses.component.css']
})
export class SearchBusesComponent implements OnInit {

  data:any;
  buses:any;
  show:boolean=true;
  bus:any;
  avail: any;
  pickup_place: string="";
  drop_place: string="";
  Departure_Time: string="";
  temp:any;
  
  constructor(private userService:UserService) { 
    //this.avail=new Available(this.pickup_place,this.drop_place,this.Departure_Time);
    //this.buses=new SearchBus();
   
  }

   GetBuses(pickup_places:any,drop_places:any,Departure_Times:any){
     var source=pickup_places.value;
     var dest=drop_places.value;
     var start=Departure_Times.value;
     this.temp=new Available(source,dest,start);
     //console.log(source,dest,start);
     //s=>{console.log(this.buses=s)}
     this.userService.GetBusesAvailable(this.temp).subscribe(s=>this.buses=s);
   }
  ngOnInit(): void {
     this.userService.GetSourceValues().subscribe(s=>{this.data=s});
  }

}

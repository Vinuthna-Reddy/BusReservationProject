import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BookingsComponent } from './bookings/bookings.component';
import { ChangePasswordComponent } from './change-password/change-password.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { LoginComponent } from './login/login.component';
import { PaymentWalletComponent } from './payment-wallet/payment-wallet.component';
import { ProfileComponent } from './profile/profile.component';
import { SearchBusesComponent } from './search-buses/search-buses.component';
import { SignupComponent } from './signup/signup.component';

const routes: Routes = [
  {path:'SearchBuses',component:SearchBusesComponent},
  {path:'Dashboard',component:DashboardComponent},
  {path:'Bookings',component:BookingsComponent},
  {path:'Profile',component:ProfileComponent},
  {path:'ChangePassword',component:ChangePasswordComponent},
  {path:'PaymentWallet',component:PaymentWalletComponent},
  {path:'',component:LoginComponent},
  {path:'Signup',component:SignupComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

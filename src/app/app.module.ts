import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ProfileComponent } from './profile/profile.component';
import { SearchBusesComponent } from './search-buses/search-buses.component';
import { BookingsComponent } from './bookings/bookings.component';
import { ChangePasswordComponent } from './change-password/change-password.component';
import { PaymentWalletComponent } from './payment-wallet/payment-wallet.component';
import { UserService } from './services/user.service';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { DashboardComponent } from './dashboard/dashboard.component';




@NgModule({
  declarations: [
    AppComponent,
    ProfileComponent,
    SearchBusesComponent,
    BookingsComponent,
    ChangePasswordComponent,
    PaymentWalletComponent,
    LoginComponent,
    SignupComponent,
    DashboardComponent

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [UserService],
  bootstrap: [AppComponent]
})
export class AppModule { }

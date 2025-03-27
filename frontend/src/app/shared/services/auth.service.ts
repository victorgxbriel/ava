import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { firstValueFrom, Observable } from "rxjs";
import { environment } from '../../../../environment'
import { tap } from "lodash";

@Injectable({
    providedIn: 'root'
})
export class AuthService {
    constructor(private http: HttpClient) {}

    login(username: string, password: string): Promise<void> {
        return firstValueFrom(this.http.post<string>(`${environment.apiUrl}/login`, { username, password})).then(response => {
            localStorage.setItem('jwtToken', response)
        })
    }

    logout() {
        localStorage.removeItem('jwtToken')
    }
    
    getToken() : string | null {
        return localStorage.getItem('jwtToken')
    }

    isLoggedIn(): boolean {
        return !!this.getToken();
    }
}
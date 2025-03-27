import { Injectable } from "@angular/core";
import { ActivatedRouteSnapshot, CanActivate, GuardResult, MaybeAsync, Router, RouterStateSnapshot, UrlTree } from "@angular/router";
import { AuthService } from "../services/auth.service";
import { Observable } from "rxjs";


@Injectable({
    providedIn: 'root'
})
export class RoleGuard implements CanActivate {
    constructor(private authService: AuthService, private router: Router) {}

    canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): boolean | UrlTree | Observable<boolean | UrlTree> | Promise<boolean | UrlTree> {
        const requiredRoles = route.data['roles'] as string[]
        const userRole = this.getUserRole()

        if(requiredRoles && requiredRoles.length > 0) {
            if(userRole && requiredRoles.includes(userRole)){
                return true
            }
            return this.router.parseUrl('/acesso-negado')
        }
        return true
    }

    private getUserRole() : string | null {
        return localStorage.getItem('userRoles') ?? null
    }

}
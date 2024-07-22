export class Utilisateur {
  id: string;
  nom: string;
  prenom: string;
  email: string;
  password: string;
  role: number;
  loggin_attempts: number;
  blocked_until: Date;
  telephone: string;
}

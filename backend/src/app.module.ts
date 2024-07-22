import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UtilisateursModule } from './utilisateurs/utilisateurs.module';
import { UtilisateursService } from './utilisateurs/utilisateurs.service';

@Module({
  imports: [UtilisateursModule],
  controllers: [AppController],
  providers: [AppService, UtilisateursService],
})
export class AppModule {}

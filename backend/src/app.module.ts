import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UtilisateursModule } from './utilisateurs/utilisateurs.module';
import { UtilisateursService } from './utilisateurs/utilisateurs.service';
import { ItemsModule } from './items/items.module';
import { CustomersModule } from './customers/customers.module';
import { ChantiersModule } from './chantiers/chantiers.module';

@Module({
  imports: [UtilisateursModule, ItemsModule, CustomersModule, ChantiersModule],
  controllers: [AppController],
  providers: [AppService, UtilisateursService],
})
export class AppModule {}

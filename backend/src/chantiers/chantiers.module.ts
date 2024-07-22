import { Module } from '@nestjs/common';
import { ChantiersService } from './chantiers.service';
import { ChantiersController } from './chantiers.controller';

@Module({
  controllers: [ChantiersController],
  providers: [ChantiersService],
})
export class ChantiersModule {}

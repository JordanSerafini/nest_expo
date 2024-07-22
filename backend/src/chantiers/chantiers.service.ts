import { Injectable } from '@nestjs/common';
import { CreateChantierDto } from './dto/create-chantier.dto';
import { UpdateChantierDto } from './dto/update-chantier.dto';

@Injectable()
export class ChantiersService {
  create(createChantierDto: CreateChantierDto) {
    return 'This action adds a new chantier';
  }

  findAll() {
    return `This action returns all chantiers`;
  }

  findOne(id: number) {
    return `This action returns a #${id} chantier`;
  }

  update(id: number, updateChantierDto: UpdateChantierDto) {
    return `This action updates a #${id} chantier`;
  }

  remove(id: number) {
    return `This action removes a #${id} chantier`;
  }
}

import { Injectable } from '@nestjs/common';
import { CreateUtilisateurDto } from './dto/create-utilisateur.dto';
import { UpdateUtilisateurDto } from './dto/update-utilisateur.dto';
import { Utilisateur } from './entities/utilisateur.entity';
import { PrismaService } from '../../prisma/prisma.service';

@Injectable()
export class UtilisateursService {
  constructor(private readonly prisma: PrismaService) {}

  create(createUtilisateurDto: CreateUtilisateurDto): Promise<Utilisateur> {
    return this.prisma.utilisateurs.create({
      data: createUtilisateurDto,
    });
  }

  async findAll(): Promise<Utilisateur[]> {
    return this.prisma.utilisateurs.findMany();
  }

  async findOne(id: string): Promise<Utilisateur> {
    return this.prisma.utilisateurs.findUnique({
      where: { id },
    });
  }

  async update(
    id: string,
    updateUtilisateurDto: UpdateUtilisateurDto,
  ): Promise<Utilisateur> {
    return this.prisma.utilisateurs.update({
      where: { id },
      data: updateUtilisateurDto,
    });
  }

  async remove(id: string): Promise<Utilisateur> {
    return this.prisma.utilisateurs.delete({
      where: { id },
    });
  }
}

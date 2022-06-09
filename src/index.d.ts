import { PrismaClient, EquipmentType } from "@prisma/client";

export interface Context {
  prisma: PrismaClient;
  EquipmentType:EquipmentType;
}

export function createContext(): Promise<Context>;
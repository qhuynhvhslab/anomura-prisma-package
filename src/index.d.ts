import { PrismaClient, EquipmentType } from "@prisma/client";

export interface Context {
  prisma: PrismaClient;
  equipmentType:EquipmentType;
}

export function createContext(): Promise<Context>;
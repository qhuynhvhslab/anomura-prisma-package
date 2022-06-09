import { PrismaClient, EquipmentType } from "@prisma/client";

export interface Context {
  prisma: PrismaClient;
  equipmentType: any;
}

export function createContext(): Promise<Context>;
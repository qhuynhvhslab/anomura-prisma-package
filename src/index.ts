import { PrismaClient, EquipmentType } from "@prisma/client";
import { Context } from "./index.d";

const prisma = new PrismaClient();
let equipmentType: EquipmentType;

export const createContext = async (): Promise<Context> => ({ prisma, equipmentType });


import { PrismaClient, EquipmentType } from "@prisma/client";
import { Context } from "./index.d";

const prisma = new PrismaClient();

 export const createContext = async (EquipmentType: EquipmentType): Promise<Context> => ({ prisma, EquipmentType });


import { PrismaClient, EquipmentType } from "@prisma/client";
import { Context } from "./index.d";

const prisma = new PrismaClient();

let equipmentType = {
    CLAWS: EquipmentType.CLAWS, 
    LEGS: EquipmentType.LEGS, 
    BODY: EquipmentType.BODY, 
    SHELL: EquipmentType.SHELL, 
    HEADPIECES: EquipmentType.HEADPIECES
};

// let equipmentType:EquipmentType = EquipmentType;


export const createContext = (): Context => ({ prisma, equipmentType });


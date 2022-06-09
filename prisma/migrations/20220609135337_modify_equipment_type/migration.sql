/*
  Warnings:

  - The values [SOULBOUND,NFT] on the enum `EquipmentType` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "EquipmentType_new" AS ENUM ('CLAWS', 'LEGS', 'BODY', 'SHELL', 'HEADPIECES');
ALTER TABLE "AnomuraEquipment" ALTER COLUMN "type" TYPE "EquipmentType_new" USING ("type"::text::"EquipmentType_new");
ALTER TYPE "EquipmentType" RENAME TO "EquipmentType_old";
ALTER TYPE "EquipmentType_new" RENAME TO "EquipmentType";
DROP TYPE "EquipmentType_old";
COMMIT;

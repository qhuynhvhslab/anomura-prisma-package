/*
  Warnings:

  - Added the required column `eventLogId` to the `AnomuraContractLog` table without a default value. This is not possible if the table is not empty.
  - Added the required column `eventLogId` to the `AnomuraEquipmentContractLog` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "AnomuraContractLog" ADD COLUMN     "eventLogId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "AnomuraEquipmentContractLog" ADD COLUMN     "eventLogId" TEXT NOT NULL;

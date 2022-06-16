/*
  Warnings:

  - Added the required column `transactionHash` to the `AnomuraContractLog` table without a default value. This is not possible if the table is not empty.
  - Added the required column `transactionHash` to the `AnomuraEquipmentContractLog` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "AnomuraContractLog" ADD COLUMN     "transactionHash" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "AnomuraEquipmentContractLog" ADD COLUMN     "transactionHash" TEXT NOT NULL;

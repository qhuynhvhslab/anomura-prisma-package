-- CreateEnum
CREATE TYPE "EquipmentType" AS ENUM ('SOULBOUND', 'NFT');

-- AlterTable
ALTER TABLE "Anomuras" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- CreateTable
CREATE TABLE "AnomuraEquipment" (
    "id" SERIAL NOT NULL,
    "equipmentId" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "image" TEXT NOT NULL DEFAULT E'',
    "type" "EquipmentType" NOT NULL,
    "isEquipped" BOOLEAN NOT NULL DEFAULT false,
    "equipToAnomura" INTEGER DEFAULT 0,
    "playersWallet" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "AnomuraEquipment_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "AnomuraEquipment_equipmentId_key" ON "AnomuraEquipment"("equipmentId");

-- AddForeignKey
ALTER TABLE "AnomuraEquipment" ADD CONSTRAINT "AnomuraEquipment_equipToAnomura_fkey" FOREIGN KEY ("equipToAnomura") REFERENCES "Anomuras"("crabId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AnomuraEquipment" ADD CONSTRAINT "AnomuraEquipment_playersWallet_fkey" FOREIGN KEY ("playersWallet") REFERENCES "Players"("wallet") ON DELETE SET NULL ON UPDATE CASCADE;

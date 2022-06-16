-- CreateTable
CREATE TABLE "AnomuraEquipmentContractLog" (
    "id" SERIAL NOT NULL,
    "address" TEXT NOT NULL,
    "eventName" TEXT NOT NULL,
    "blockNumber" INTEGER NOT NULL,
    "data" JSONB,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "AnomuraEquipmentContractLog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AnomuraContractLog" (
    "id" SERIAL NOT NULL,
    "address" TEXT NOT NULL,
    "eventName" TEXT NOT NULL,
    "blockNumber" INTEGER NOT NULL,
    "data" JSONB,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "AnomuraContractLog_pkey" PRIMARY KEY ("id")
);

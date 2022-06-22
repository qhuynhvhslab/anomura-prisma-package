/*
  Warnings:

  - You are about to drop the `TeamAddress` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "TeamAddress";

-- CreateTable
CREATE TABLE "TeamListAddress" (
    "id" SERIAL NOT NULL,
    "wallet" TEXT NOT NULL,

    CONSTRAINT "TeamListAddress_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "TeamListAddress_wallet_key" ON "TeamListAddress"("wallet");

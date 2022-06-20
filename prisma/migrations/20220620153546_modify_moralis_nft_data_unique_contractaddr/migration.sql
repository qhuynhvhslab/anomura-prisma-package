/*
  Warnings:

  - A unique constraint covering the columns `[contractAddress]` on the table `MoralisNftData` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "MoralisNftData_contractAddress_key" ON "MoralisNftData"("contractAddress");

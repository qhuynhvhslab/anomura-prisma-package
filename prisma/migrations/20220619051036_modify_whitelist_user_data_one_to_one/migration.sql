/*
  Warnings:

  - A unique constraint covering the columns `[userId]` on the table `WhiteListUserData` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "WhiteListUserData_userId_key" ON "WhiteListUserData"("userId");

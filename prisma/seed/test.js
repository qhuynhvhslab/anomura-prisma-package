// const { PrismaClient } = require("@prisma/client");

// const prisma = new PrismaClient();

const Prisma = require("../../dist/index");
const { prisma } = Prisma.createContext()
// let prisma = prismaContext.prisma;

async function main() {

    let test = await prisma.questType.findMany();
    console.log(test)
}

main()
    .catch((e) => {
        console.error(e);
        process.exit(1);
    })
    .finally(async () => {
        await prisma.$disconnect();
    });

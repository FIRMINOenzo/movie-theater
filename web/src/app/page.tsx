import Image from "next/image";
import searchIcon from "../assets/search-icon.svg";
import homaranha from "../assets/homaranha.jpg";

export default function Home() {
  return (
    <main className="h-screen bg-gray-200 text-white">
      <nav className="bg-gradient-to-r from-purple-200 to-purple-100 h-[70px] flex items-center justify-center">
        <div className="bg-purple-50 h-[50px] w-[600px] flex justify-end rounded-[10px] drop-shadow-lg">
          <Image src={searchIcon} alt="Search Icon" className="m-2" />
        </div>
      </nav>

      <div>
        <h1 className="font-alt text-4xl p-12">Filmes em Cartaz</h1>

        <div className="flex flex-row justify-evenly">
          <div className="w-[250px] h-[375px] m-6 mt-0 flex flex-col">
            <Image
              src={homaranha}
              alt=""
              className="rounded-[6px] drop-shadow-lg"
            />
            <p className="font-sans text-center text-lg p-3">
              Homem-Aranha: Através Do Aranhaverso
            </p>
            <button className="uppercase font-alt bg-purple-300 self-center pt-1 pb-1 pr-6 pl-6 rounded-[10px] text-sm">
              Ver filme
            </button>
          </div>
          <div className="w-[250px] h-[375px] bg-white m-6 mt-0"></div>
          <div className="w-[250px] h-[375px] bg-white m-6 mt-0"></div>
          <div className="w-[250px] h-[375px] bg-white m-6 mt-0"></div>
          <div className="w-[250px] h-[375px] bg-white m-6 mt-0"></div>
        </div>
      </div>
    </main>
  );
}

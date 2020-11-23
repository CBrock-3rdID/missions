import sh from 'shelljs';

const serverPath = 'C:\\TCAFiles\\Users\\admin\\';
const repoServerPath = sh.pwd().stdout + '\\..\\servers\\';

interface IPath {
  origin: string;
  destination: string;
}

const paths: IPath[] = [{
  origin: repoServerPath + 'Public',
  destination: serverPath + '9',
}, {
  origin: repoServerPath + 'Realism',
  destination: serverPath + '10',
}, {
  origin: repoServerPath + 'RR',
  destination: serverPath + '11',
}, {
  origin: repoServerPath + 'TS',
  destination: serverPath + '12',
}, {
  origin: repoServerPath + 'TS',
  destination: serverPath + '13',
}, {
  origin: repoServerPath + 'Operation',
  destination: serverPath + '14',
}];

paths.forEach(({ origin, destination }) => {
  const missionDir = destination + '\\mpmissions';

  try {
    sh.rm('-r -f', missionDir)
    sh.mv(origin, missionDir);
  } catch (e) {
    console.log(e);
  }
});

console.log('Mission files moved!');

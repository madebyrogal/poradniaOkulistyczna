<?php

namespace AppBundle\Command;

use Symfony\Bundle\FrameworkBundle\Command\ContainerAwareCommand;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use AppBundle\Entity\Symptom;

class SymptomsCommand extends ContainerAwareCommand
{
    const DISEASE_CHILD = 1;
    const DISEASE_ADULT = 2;

    protected function configure()
    {
        $this
                ->setName('poradnia:symptoms:generate')
                ->setDescription('Generate symptoms')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $em = $this->getContainer()->get('doctrine')->getManager();
        $em->createQuery('DELETE FROM AppBundle:Symptom')->execute();
        
        $this->generateSymptoms($em, self::DISEASE_CHILD);
        $this->generateSymptoms($em, self::DISEASE_ADULT);

        $output->writeln('Symptoms have been generated');
    }
    
    protected function generateSymptoms($em, $patient = self::DISEASE_CHILD){
        $diseases = $this->getContainer()->get('doctrine')->getRepository('AppBundle:Disease')->findBy(array('patient'=> $patient));
        foreach ($diseases as $disease) {
            $symptomsTemp = explode(',', $disease->getSymptomsSearch());
            foreach ($symptomsTemp as $symptom) {
                if(trim($symptom) !== ''){
                    $symptoms[] = trim($symptom);
                }
            }
        }
        $symptoms = array_unique($symptoms);
        
        foreach ($symptoms as $symptomName) {
            $symptom = new Symptom();
            $symptom->setName($symptomName);
            $symptom->setPatient($patient);
            $em->persist($symptom);
        }
        $em->flush();
    }

}

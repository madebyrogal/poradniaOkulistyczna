<?php

namespace AppBundle\Command;

use Symfony\Bundle\FrameworkBundle\Command\ContainerAwareCommand;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use AppBundle\Entity\Symptom;

class SymptomsCommand extends ContainerAwareCommand
{

    protected function configure()
    {
        $this
                ->setName('poradnia:symptoms:generate')
                ->setDescription('Generate symptoms')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $symptoms = array();
        $em = $this->getContainer()->get('doctrine')->getManager();
        $diseases = $this->getContainer()->get('doctrine')->getRepository('AppBundle:Disease')->findAll();
        foreach ($diseases as $disease) {
            $symptomsTemp = explode(',', $disease->getSymptoms());
            foreach($symptomsTemp as $symptom){
                $symptoms[] = trim($symptom);
            }
        }
        $symptoms = array_unique($symptoms);
        
        //Clear table
        $em->createQuery('DELETE FROM AppBundle:Symptom')->execute();
        
        foreach($symptoms as $symptomName){
            $symptom = new Symptom();
            $symptom->setName($symptomName);
            $em->persist($symptom);
        }
        
        $em->flush();
        
        $output->writeln('Symptoms have been generated');
    }

}

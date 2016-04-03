<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;

class SearchController extends Controller
{

    /**
     * @Route("szukaj.html", name="search")
     */
    public function searchAction(Request $request)
    {
        $search = $request->query->get('search');

        $qb = $this->getDoctrine()->getRepository('AppBundle:Disease')->createQueryBuilder('d');
        if (!empty($search['search'])) {
            $qb->andWhere('d.symptoms LIKE :search');
            $qb->setParameter('search', '%' . $search['search'] . '%');
        }
        if (!empty($search['disease'])) {
            $qb->andWhere('d.id = :id');
            $qb->setParameter('id', $search['disease']);
        }
        $q = $qb->getQuery();
        $qType = $qb->groupBy('d.type')->getQuery();

        $diseases = $q->getResult();
        $types = $qType->getResult();

        return $this->render('AppBundle:Search:search.html.twig', array(
                    'diseases' => $diseases,
                    'types' => $types,
                    'search' => $search
        ));
    }

    /**
     * @Route("symptoms-search.html", name="symptoms-search")
     */
    public function searchSymptomsAction(Request $request)
    {
        $symptoms = array();
        $search = $request->query->get('symptom');
        if (!empty($search)) {
            $qb = $this->getDoctrine()->getRepository('AppBundle:Symptom')->createQueryBuilder('s')->select('s.name');
            $qb->andWhere('s.name LIKE :symptom');
            $qb->setParameter('symptom', '%' . $search . '%');
            $q = $qb->getQuery();
            $symptoms = $q->getArrayResult();
        }
        
        return new JsonResponse($symptoms, JsonResponse::HTTP_OK);
    }

    /**
     * Render option in searchbox
     * @return type
     */
    public function renderOptionSearchAction($diseaseId = 0)
    {
        $diseases = $this->getDoctrine()->getRepository('AppBundle:Disease')->findBy(array(), array('name' => 'ASC'));

        return $this->render('AppBundle:Search:_renderOption.html.twig', array(
                    'diseases' => $diseases,
                    'diseaseId' => $diseaseId
        ));
    }

}

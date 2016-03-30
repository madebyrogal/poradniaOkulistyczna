<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class SearchController extends Controller
{

    /**
     * @Route("szukaj.html", name="search")
     */
    public function searchAction(Request $request)
    {
        $search = $request->query->get('search');
        
        $qb = $this->getDoctrine()->getRepository('AppBundle:Disease')->createQueryBuilder('d');
        if(!empty($search['search'])){
            $qb->andWhere('d.name LIKE :name');
            $qb->setParameter('name', '%'.$search['search'].'%');
        }
        if(!empty($search['disease'])){
            $qb->andWhere('d.id = :id');
            $qb->setParameter('id', $search['disease']);
        }
        $q = $qb->getQuery();
        $diseases = $q->getResult();

        return $this->render('AppBundle:Search:search.html.twig', array(
                    'diseases' => $diseases
        ));
    }

    /**
     * Render option in searchbox
     * @return type
     */
    public function renderOptionSearchAction()
    {
        $diseases = $this->getDoctrine()->getRepository('AppBundle:Disease')->findBy(array(), array('name'=>'ASC'));

        return $this->render('AppBundle:Search:_renderOption.html.twig', array(
                    'diseases' => $diseases
        ));
    }

}

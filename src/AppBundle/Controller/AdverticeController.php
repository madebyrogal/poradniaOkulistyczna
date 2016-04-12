<?php

namespace AppBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use AppBundle\Entity\Advertice;
use AppBundle\Form\AdverticeType;

/**
 * Advertice controller.
 *
 * @Route("/advertice")
 */
class AdverticeController extends Controller
{
    /**
     * Lists all Advertice entities.
     *
     * @Route("/", name="advertice_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $advertices = $em->getRepository('AppBundle:Advertice')->findAll();

        return $this->render('advertice/index.html.twig', array(
            'advertices' => $advertices,
        ));
    }

    /**
     * Creates a new Advertice entity.
     *
     * @Route("/new", name="advertice_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $advertice = new Advertice();
        $form = $this->createForm('AppBundle\Form\AdverticeType', $advertice);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($advertice);
            $em->flush();

            return $this->redirectToRoute('advertice_show', array('id' => $advertice->getId()));
        }

        return $this->render('advertice/new.html.twig', array(
            'advertice' => $advertice,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Advertice entity.
     *
     * @Route("/{id}", name="advertice_show")
     * @Method("GET")
     */
    public function showAction(Advertice $advertice)
    {
        $deleteForm = $this->createDeleteForm($advertice);

        return $this->render('advertice/show.html.twig', array(
            'advertice' => $advertice,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Advertice entity.
     *
     * @Route("/{id}/edit", name="advertice_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Advertice $advertice)
    {
        $deleteForm = $this->createDeleteForm($advertice);
        $editForm = $this->createForm('AppBundle\Form\AdverticeType', $advertice);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($advertice);
            $em->flush();

            return $this->redirectToRoute('advertice_edit', array('id' => $advertice->getId()));
        }

        return $this->render('advertice/edit.html.twig', array(
            'advertice' => $advertice,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Advertice entity.
     *
     * @Route("/{id}", name="advertice_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Advertice $advertice)
    {
        $form = $this->createDeleteForm($advertice);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($advertice);
            $em->flush();
        }

        return $this->redirectToRoute('advertice_index');
    }

    /**
     * Creates a form to delete a Advertice entity.
     *
     * @param Advertice $advertice The Advertice entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Advertice $advertice)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('advertice_delete', array('id' => $advertice->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
